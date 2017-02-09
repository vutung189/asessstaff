package com.controller;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.FileReader;
import java.io.IOException;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletResponse;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.model.SynthesisTeaching;
import com.model.User;
import com.service.RoleService;
import com.service.SynthesisTeachingService;
import com.service.UserService;

import au.com.bytecode.opencsv.CSVReader;
import au.com.bytecode.opencsv.CSVWriter;
import au.com.bytecode.opencsv.bean.ColumnPositionMappingStrategy;
import au.com.bytecode.opencsv.bean.CsvToBean;

@Controller
public class AdminController {

	@Autowired
	private UserService userService;

	@Autowired
	private RoleService roleService;

	@Autowired
	private SynthesisTeachingService synthesisTeachingService;

	private CSVWriter writer;

	/*
	 * ---------------------------- Controller
	 * account-----------------------------------
	 */

	@RequestMapping(value = "admin/account/{pageNumber}", method = RequestMethod.GET)
	public String adminPage(@PathVariable Integer pageNumber, Model model) {
		Page<User> page = userService.getPage(pageNumber);

		int current = page.getNumber() + 1;
		int begin = Math.max(1, current - 5);
		int end = Math.min(begin + 10, page.getTotalPages());

		model.addAttribute("userPage", page);
		model.addAttribute("beginIndex", begin);
		model.addAttribute("endIndex", end);
		model.addAttribute("currentIndex", current);

		System.out.println("so phan tu " + page.getSize());

		// model.addAttribute("users", users);
		return "admins/adminAccount";
	}

	@RequestMapping(value = { "account/create" }, method = RequestMethod.GET)
	public String createUser(Model model) {

		User user = new User();

		model.addAttribute("user", user);

		Map<String, String> genders = new LinkedHashMap<String, String>();
		genders.put("M", "Nam");
		genders.put("F", "Nữ");
		model.addAttribute("genders", genders);

		return "admins/adminEditUser";
	}

	@RequestMapping(value = { "account/create" }, method = RequestMethod.POST)
	public String createUser(@Valid User user, BindingResult result, Model model) {

		System.out.println("user id create " + user.getId() + "\n user create: " + user.getEmail());

		user.setRoles(roleService.findByName("ROLE_USER"));

		if (result.hasErrors()) {

			System.out.println("Có lỗi ");

			return "admins/adminEditUser";
		}

		userService.save(user);

		return "redirect:/admin/account/1";
	}

	@RequestMapping(value = { "account/edit-user-{id}" }, method = RequestMethod.GET)
	public String editUser(@PathVariable long id, Model model) {

		User user = userService.findById(id);

		System.out.println("id edit user : " + user.getUsername());
		model.addAttribute("user", user);

		Map<String, String> genders = new LinkedHashMap<String, String>();
		genders.put("", "");
		genders.put("Nam", "Nam");
		genders.put("Nữ", "Nữ");
		model.addAttribute("genders", genders);

		return "admins/adminEditUser";
	}

	/**
	 * This method will be called on form submission, handling POST request for
	 * updating user in database. It also validates the user input
	 */
	@RequestMapping(value = { "account/edit-user-{id}" }, method = RequestMethod.POST)
	public String updateUser(@Valid User user, BindingResult result, Model model, @PathVariable long id) {

		System.out.println(
				"user id update " + user.getId() + "\n user update email: " + user.getEmail() + "\n birth date : ");

		if (result.hasErrors()) {

			System.out.println("have error with form  ");

			return "admins/adminEditUser";
		}

		userService.update(user);

		return "redirect:/admin/account/1";
	}

	@RequestMapping(value = { "account/delete-user-{id}" }, method = RequestMethod.GET)
	public String deleteUser(@PathVariable long id, Model model) {

		userService.deleteById(id);

		return "redirect:/admin/account/1";
	}
	/*
	 * ---------------------End--------------
	 */

	/*
	 * ---------------------------- controller
	 * SynthesisTeaching-----------------------------------
	 */

	@RequestMapping(value = "admin/SynthesisTeaching/{pageNumber}", method = RequestMethod.GET)
	public String synthethicPage(@PathVariable Integer pageNumber, Model model) {

		
		Page<SynthesisTeaching> page= synthesisTeachingService.getPage(pageNumber);;
		
		int current = page.getNumber() + 1;
		int begin = Math.max(1, current - 5);
		int end = Math.min(begin + 10, page.getTotalPages());

		model.addAttribute("page", page);
		model.addAttribute("beginIndex", begin);
		model.addAttribute("endIndex", end);
		model.addAttribute("currentIndex", current);
		

		System.out.println("so phan tu " + page.getSize());

		return "admins/synthesisTeaching";
	}

	@RequestMapping(value = { "SynthesisTeaching/edit-{id}" }, method = RequestMethod.GET)
	public String editSynthesisTeaching(@PathVariable long id, Model model) {

		SynthesisTeaching synthesisTeaching = synthesisTeachingService.findById(id);

		model.addAttribute("synthesisTeaching", synthesisTeaching);

		Map<String, String> term = new LinkedHashMap<String, String>();
		term.put("1", "1");
		term.put("2", "2");
		model.addAttribute("term", term);

		return "admins/editSynthesisTeaching";
	}

	@RequestMapping(value = { "SynthesisTeaching/edit-{id}" }, method = RequestMethod.POST)
	public String editSynthesisTeaching(@Valid SynthesisTeaching synthesisTeaching, BindingResult result, Model model,
			@PathVariable long id) {

		if (result.hasErrors()) {

			System.out.println("have error with form  ");

			return "admins/editSynthesisTeaching";
		} else {
			synthesisTeachingService.update(synthesisTeaching);
		}
		return "redirect:/admin/SynthesisTeaching/1";
	}

	@RequestMapping(value = { "SynthesisTeaching/create" }, method = RequestMethod.GET)
	public String createSynthesisTeaching(Model model) {

		SynthesisTeaching synthesisTeaching = new SynthesisTeaching();

		model.addAttribute("synthesisTeaching", synthesisTeaching);

		Map<String, String> term = new LinkedHashMap<String, String>();
		term.put("1", "1");
		term.put("2", "2");
		model.addAttribute("term", term);

		return "admins/editSynthesisTeaching";
	}

	@RequestMapping(value = { "SynthesisTeaching/create" }, method = RequestMethod.POST)
	public String createSynthesisTeaching(@Valid SynthesisTeaching synthesisTeaching, BindingResult result,
			Model model) {

		if (result.hasErrors()) {
			System.out.println("Có lỗi ");

			return "admins/editSynthesisTeaching";
		}

		synthesisTeachingService.update(synthesisTeaching);

		return "redirect:/admin/SynthesisTeaching/1";
	}

	@RequestMapping(value = { "SynthesisTeaching/delete-{id}" }, method = RequestMethod.GET)
	public String deleteSynthesis(@PathVariable long id, Model model) {

		synthesisTeachingService.deleteById(id);

		return "redirect:/admin/SynthesisTeaching/1";
	}

	@RequestMapping(value = { "admin/SynthesisTeaching/search" }, method = RequestMethod.GET)
	public String searchSynthesisTeaching(@RequestParam("searchString") String searchString,@RequestParam(value="pageNumber",required =false) Integer pageNumber,
			Model model) {
		
		if(pageNumber==null){
			pageNumber=1;
		}

		Page<SynthesisTeaching> syn = synthesisTeachingService.getPageByString(pageNumber, searchString);

		System.out.println("searchString :" + searchString);


		for (int i = 0; i < syn.getContent().size(); i++) {
			System.out.println("i : " + i + syn.getContent().get(i).getLecturer() + "\n");
		}

		int current = syn.getNumber() + 1;
		int begin = Math.max(1, current - 5);
		int end = Math.min(begin + 10, syn.getTotalPages());

		model.addAttribute("page", syn);
		model.addAttribute("beginIndex", begin);
		model.addAttribute("endIndex", end);
		model.addAttribute("currentIndex", current);
		
		model.addAttribute("searchString", searchString);
		
		return "admins/searchSynthesisTeaching";

	}

	@RequestMapping(value = "/admin/SynthesisTeaching/downloadfile")
	public void downloadSynthesis(HttpServletResponse response) throws IOException {

		List<SynthesisTeaching> lists = synthesisTeachingService.findAll();

		String[] headers = new String[] { "id", "year", "term", "classCredit", "numberPupils", "nameCredit",
				"numberCredits", "lecturer", "theoryNumberGroup", "theoryNumberPupilts", "theoryTimeGroup",
				"theoryTimeIn", "theoryTimeOut", "theoryTime7", "practiceNumberGroup", "practiceNumberLecturer",
				"practiceNumberPupilts", "practiceTimeGroup", "practiceTimeIn", "practiceTimeOut", "practiceTime7",
				"selftStudy", "timeStandard", "unit", "note" };
		String csv = "data.csv";
		response.setContentType("text/csv; charset=utf-8");
		response.setHeader("Content-disposition", "attachment;filename=" + csv);

		OutputStream out = response.getOutputStream();
		OutputStream bos = new BufferedOutputStream(out);
		OutputStreamWriter outputStreamWriter = new OutputStreamWriter(bos, "UTF-8");

		writer = new CSVWriter(outputStreamWriter);
		writer.writeNext(headers);
		for (Object list : lists) {
			writer.writeNext(list.toString().split(","));
		}

		outputStreamWriter.flush();
		outputStreamWriter.close();

	}

	// ten file co the bi trung.
	@RequestMapping(value = "/admin/SynthesisTeaching/uploadFile", method = RequestMethod.POST)
	public @ResponseBody String uploadFileHandler(@RequestParam("file") MultipartFile file) {

		if (!file.isEmpty()) {
			try {
				byte[] bytes = file.getBytes();
				// Creating the directory to store file
				String rootPath = System.getProperty("catalina.home");
				File dir = new File(rootPath + File.separator + "uploadFile");
				if (!dir.exists())
					dir.mkdirs();
				System.out.println("rootPath : " + rootPath);

				// Create the file on server
				File serverFile = new File(dir.getAbsolutePath() + File.separator + file.getOriginalFilename());
				BufferedOutputStream stream = new BufferedOutputStream(new FileOutputStream(serverFile));
				stream.write(bytes);
				stream.close();
				try {
					CsvToBean<SynthesisTeaching> csv = new CsvToBean<SynthesisTeaching>();
					FileReader fileReader = new FileReader(serverFile);
					CSVReader reader = new CSVReader(fileReader);

					List<SynthesisTeaching> list = csv.parse(setColumMapping(), reader);
					for (Object i : list) {
						SynthesisTeaching synthesisTeaching = (SynthesisTeaching) i;

						synthesisTeachingService.update(synthesisTeaching);
						// create or update SynthesisTeaching to db.
						System.out.println(synthesisTeaching.toString());
					}

				} catch (Exception e) {
					System.out.println("error while reading csv and put to db : " + e.getMessage());
				}

				return "You successfully uploaded file=" + file.getOriginalFilename();
			} catch (Exception e) {
				return "You failed to upload " + file.getOriginalFilename() + " => " + e.getMessage();
			}
		} else {
			return "You failed to upload " + file.getOriginalFilename() + " because the file was empty.";
		}
	}

	/*
	 * ---------------------End controller
	 */

	@SuppressWarnings({ "rawtypes", "unchecked" })
	private static ColumnPositionMappingStrategy<SynthesisTeaching> setColumMapping() {
		ColumnPositionMappingStrategy strategy = new ColumnPositionMappingStrategy();
		strategy.setType(SynthesisTeaching.class);
		String[] columns = new String[] { "id", "year", "term", "classCredit", "numberPupils", "nameCredit",
				"numberCredits", "lecturer", "theoryNumberGroup", "theoryNumberPupilts", "theoryTimeGroup",
				"theoryTimeIn", "theoryTimeOut", "theoryTime7", "practiceNumberGroup", "practiceNumberLecturer",
				"practiceNumberPupilts", "practiceTimeGroup", "practiceTimeIn", "practiceTimeOut", "practiceTime7",
				"selftStudy", "timeStandard", "unit", "note" };
		strategy.setColumnMapping(columns);
		return strategy;
	}

}
